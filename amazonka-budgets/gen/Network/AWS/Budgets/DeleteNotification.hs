{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.DeleteNotification
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a notification and related subscribers
module Network.AWS.Budgets.DeleteNotification
    (
    -- * Creating a Request
      deleteNotification
    , DeleteNotification
    -- * Request Lenses
    , dnAccountId
    , dnBudgetName
    , dnNotification

    -- * Destructuring the Response
    , deleteNotificationResponse
    , DeleteNotificationResponse
    -- * Response Lenses
    , dnrsResponseStatus
    ) where

import           Network.AWS.Budgets.Types
import           Network.AWS.Budgets.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Request of DeleteNotification
--
-- /See:/ 'deleteNotification' smart constructor.
data DeleteNotification = DeleteNotification'
    { _dnAccountId    :: !Text
    , _dnBudgetName   :: !Text
    , _dnNotification :: !Notification
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnAccountId' - Undocumented member.
--
-- * 'dnBudgetName' - Undocumented member.
--
-- * 'dnNotification' - Undocumented member.
deleteNotification
    :: Text -- ^ 'dnAccountId'
    -> Text -- ^ 'dnBudgetName'
    -> Notification -- ^ 'dnNotification'
    -> DeleteNotification
deleteNotification pAccountId_ pBudgetName_ pNotification_ =
    DeleteNotification'
    { _dnAccountId = pAccountId_
    , _dnBudgetName = pBudgetName_
    , _dnNotification = pNotification_
    }

-- | Undocumented member.
dnAccountId :: Lens' DeleteNotification Text
dnAccountId = lens _dnAccountId (\ s a -> s{_dnAccountId = a});

-- | Undocumented member.
dnBudgetName :: Lens' DeleteNotification Text
dnBudgetName = lens _dnBudgetName (\ s a -> s{_dnBudgetName = a});

-- | Undocumented member.
dnNotification :: Lens' DeleteNotification Notification
dnNotification = lens _dnNotification (\ s a -> s{_dnNotification = a});

instance AWSRequest DeleteNotification where
        type Rs DeleteNotification =
             DeleteNotificationResponse
        request = postJSON budgets
        response
          = receiveEmpty
              (\ s h x ->
                 DeleteNotificationResponse' <$> (pure (fromEnum s)))

instance Hashable DeleteNotification

instance NFData DeleteNotification

instance ToHeaders DeleteNotification where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSBudgetServiceGateway.DeleteNotification" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DeleteNotification where
        toJSON DeleteNotification'{..}
          = object
              (catMaybes
                 [Just ("AccountId" .= _dnAccountId),
                  Just ("BudgetName" .= _dnBudgetName),
                  Just ("Notification" .= _dnNotification)])

instance ToPath DeleteNotification where
        toPath = const "/"

instance ToQuery DeleteNotification where
        toQuery = const mempty

-- | Response of DeleteNotification
--
-- /See:/ 'deleteNotificationResponse' smart constructor.
newtype DeleteNotificationResponse = DeleteNotificationResponse'
    { _dnrsResponseStatus :: Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteNotificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnrsResponseStatus' - -- | The response status code.
deleteNotificationResponse
    :: Int -- ^ 'dnrsResponseStatus'
    -> DeleteNotificationResponse
deleteNotificationResponse pResponseStatus_ =
    DeleteNotificationResponse'
    { _dnrsResponseStatus = pResponseStatus_
    }

-- | -- | The response status code.
dnrsResponseStatus :: Lens' DeleteNotificationResponse Int
dnrsResponseStatus = lens _dnrsResponseStatus (\ s a -> s{_dnrsResponseStatus = a});

instance NFData DeleteNotificationResponse
