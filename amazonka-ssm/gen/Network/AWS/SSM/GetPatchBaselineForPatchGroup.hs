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
-- Module      : Network.AWS.SSM.GetPatchBaselineForPatchGroup
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the patch baseline that should be used for the specified patch group.
--
--
module Network.AWS.SSM.GetPatchBaselineForPatchGroup
    (
    -- * Creating a Request
      getPatchBaselineForPatchGroup
    , GetPatchBaselineForPatchGroup
    -- * Request Lenses
    , gpbfpgPatchGroup

    -- * Destructuring the Response
    , getPatchBaselineForPatchGroupResponse
    , GetPatchBaselineForPatchGroupResponse
    -- * Response Lenses
    , gpbfpgrsBaselineId
    , gpbfpgrsPatchGroup
    , gpbfpgrsResponseStatus
    ) where

import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.SSM.Types
import           Network.AWS.SSM.Types.Product

-- | /See:/ 'getPatchBaselineForPatchGroup' smart constructor.
newtype GetPatchBaselineForPatchGroup = GetPatchBaselineForPatchGroup'
    { _gpbfpgPatchGroup :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetPatchBaselineForPatchGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpbfpgPatchGroup' - The name of the patch group whose patch baseline should be retrieved.
getPatchBaselineForPatchGroup
    :: Text -- ^ 'gpbfpgPatchGroup'
    -> GetPatchBaselineForPatchGroup
getPatchBaselineForPatchGroup pPatchGroup_ =
    GetPatchBaselineForPatchGroup'
    { _gpbfpgPatchGroup = pPatchGroup_
    }

-- | The name of the patch group whose patch baseline should be retrieved.
gpbfpgPatchGroup :: Lens' GetPatchBaselineForPatchGroup Text
gpbfpgPatchGroup = lens _gpbfpgPatchGroup (\ s a -> s{_gpbfpgPatchGroup = a});

instance AWSRequest GetPatchBaselineForPatchGroup
         where
        type Rs GetPatchBaselineForPatchGroup =
             GetPatchBaselineForPatchGroupResponse
        request = postJSON ssm
        response
          = receiveJSON
              (\ s h x ->
                 GetPatchBaselineForPatchGroupResponse' <$>
                   (x .?> "BaselineId") <*> (x .?> "PatchGroup") <*>
                     (pure (fromEnum s)))

instance Hashable GetPatchBaselineForPatchGroup

instance NFData GetPatchBaselineForPatchGroup

instance ToHeaders GetPatchBaselineForPatchGroup
         where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AmazonSSM.GetPatchBaselineForPatchGroup" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON GetPatchBaselineForPatchGroup where
        toJSON GetPatchBaselineForPatchGroup'{..}
          = object
              (catMaybes
                 [Just ("PatchGroup" .= _gpbfpgPatchGroup)])

instance ToPath GetPatchBaselineForPatchGroup where
        toPath = const "/"

instance ToQuery GetPatchBaselineForPatchGroup where
        toQuery = const mempty

-- | /See:/ 'getPatchBaselineForPatchGroupResponse' smart constructor.
data GetPatchBaselineForPatchGroupResponse = GetPatchBaselineForPatchGroupResponse'
    { _gpbfpgrsBaselineId     :: !(Maybe Text)
    , _gpbfpgrsPatchGroup     :: !(Maybe Text)
    , _gpbfpgrsResponseStatus :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetPatchBaselineForPatchGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpbfpgrsBaselineId' - The ID of the patch baseline that should be used for the patch group.
--
-- * 'gpbfpgrsPatchGroup' - The name of the patch group.
--
-- * 'gpbfpgrsResponseStatus' - -- | The response status code.
getPatchBaselineForPatchGroupResponse
    :: Int -- ^ 'gpbfpgrsResponseStatus'
    -> GetPatchBaselineForPatchGroupResponse
getPatchBaselineForPatchGroupResponse pResponseStatus_ =
    GetPatchBaselineForPatchGroupResponse'
    { _gpbfpgrsBaselineId = Nothing
    , _gpbfpgrsPatchGroup = Nothing
    , _gpbfpgrsResponseStatus = pResponseStatus_
    }

-- | The ID of the patch baseline that should be used for the patch group.
gpbfpgrsBaselineId :: Lens' GetPatchBaselineForPatchGroupResponse (Maybe Text)
gpbfpgrsBaselineId = lens _gpbfpgrsBaselineId (\ s a -> s{_gpbfpgrsBaselineId = a});

-- | The name of the patch group.
gpbfpgrsPatchGroup :: Lens' GetPatchBaselineForPatchGroupResponse (Maybe Text)
gpbfpgrsPatchGroup = lens _gpbfpgrsPatchGroup (\ s a -> s{_gpbfpgrsPatchGroup = a});

-- | -- | The response status code.
gpbfpgrsResponseStatus :: Lens' GetPatchBaselineForPatchGroupResponse Int
gpbfpgrsResponseStatus = lens _gpbfpgrsResponseStatus (\ s a -> s{_gpbfpgrsResponseStatus = a});

instance NFData GetPatchBaselineForPatchGroupResponse
