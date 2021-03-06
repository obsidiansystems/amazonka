{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.Sum
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServiceCatalog.Types.Sum where

import           Network.AWS.Prelude

data AccessLevelFilterKey
    = Account
    | Role
    | User
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText AccessLevelFilterKey where
    parser = takeLowerText >>= \case
        "account" -> pure Account
        "role" -> pure Role
        "user" -> pure User
        e -> fromTextError $ "Failure parsing AccessLevelFilterKey from value: '" <> e
           <> "'. Accepted values: account, role, user"

instance ToText AccessLevelFilterKey where
    toText = \case
        Account -> "Account"
        Role -> "Role"
        User -> "User"

instance Hashable     AccessLevelFilterKey
instance NFData       AccessLevelFilterKey
instance ToByteString AccessLevelFilterKey
instance ToQuery      AccessLevelFilterKey
instance ToHeader     AccessLevelFilterKey

instance ToJSON AccessLevelFilterKey where
    toJSON = toJSONText

data PrincipalType =
    IAM
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText PrincipalType where
    parser = takeLowerText >>= \case
        "iam" -> pure IAM
        e -> fromTextError $ "Failure parsing PrincipalType from value: '" <> e
           <> "'. Accepted values: iam"

instance ToText PrincipalType where
    toText = \case
        IAM -> "IAM"

instance Hashable     PrincipalType
instance NFData       PrincipalType
instance ToByteString PrincipalType
instance ToQuery      PrincipalType
instance ToHeader     PrincipalType

instance ToJSON PrincipalType where
    toJSON = toJSONText

instance FromJSON PrincipalType where
    parseJSON = parseJSONText "PrincipalType"

data ProductSource =
    PSAccount
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText ProductSource where
    parser = takeLowerText >>= \case
        "account" -> pure PSAccount
        e -> fromTextError $ "Failure parsing ProductSource from value: '" <> e
           <> "'. Accepted values: account"

instance ToText ProductSource where
    toText = \case
        PSAccount -> "ACCOUNT"

instance Hashable     ProductSource
instance NFData       ProductSource
instance ToByteString ProductSource
instance ToQuery      ProductSource
instance ToHeader     ProductSource

instance ToJSON ProductSource where
    toJSON = toJSONText

data ProductType =
    CloudFormationTemplate
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText ProductType where
    parser = takeLowerText >>= \case
        "cloud_formation_template" -> pure CloudFormationTemplate
        e -> fromTextError $ "Failure parsing ProductType from value: '" <> e
           <> "'. Accepted values: cloud_formation_template"

instance ToText ProductType where
    toText = \case
        CloudFormationTemplate -> "CLOUD_FORMATION_TEMPLATE"

instance Hashable     ProductType
instance NFData       ProductType
instance ToByteString ProductType
instance ToQuery      ProductType
instance ToHeader     ProductType

instance ToJSON ProductType where
    toJSON = toJSONText

instance FromJSON ProductType where
    parseJSON = parseJSONText "ProductType"

data ProductViewFilterBy
    = FullTextSearch
    | Owner
    | ProductType
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText ProductViewFilterBy where
    parser = takeLowerText >>= \case
        "fulltextsearch" -> pure FullTextSearch
        "owner" -> pure Owner
        "producttype" -> pure ProductType
        e -> fromTextError $ "Failure parsing ProductViewFilterBy from value: '" <> e
           <> "'. Accepted values: fulltextsearch, owner, producttype"

instance ToText ProductViewFilterBy where
    toText = \case
        FullTextSearch -> "FullTextSearch"
        Owner -> "Owner"
        ProductType -> "ProductType"

instance Hashable     ProductViewFilterBy
instance NFData       ProductViewFilterBy
instance ToByteString ProductViewFilterBy
instance ToQuery      ProductViewFilterBy
instance ToHeader     ProductViewFilterBy

instance ToJSON ProductViewFilterBy where
    toJSON = toJSONText

data ProductViewSortBy
    = CreationDate
    | Title
    | VersionCount
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText ProductViewSortBy where
    parser = takeLowerText >>= \case
        "creationdate" -> pure CreationDate
        "title" -> pure Title
        "versioncount" -> pure VersionCount
        e -> fromTextError $ "Failure parsing ProductViewSortBy from value: '" <> e
           <> "'. Accepted values: creationdate, title, versioncount"

instance ToText ProductViewSortBy where
    toText = \case
        CreationDate -> "CreationDate"
        Title -> "Title"
        VersionCount -> "VersionCount"

instance Hashable     ProductViewSortBy
instance NFData       ProductViewSortBy
instance ToByteString ProductViewSortBy
instance ToQuery      ProductViewSortBy
instance ToHeader     ProductViewSortBy

instance ToJSON ProductViewSortBy where
    toJSON = toJSONText

data ProvisioningArtifactType =
    PATCloudFormationTemplate
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText ProvisioningArtifactType where
    parser = takeLowerText >>= \case
        "cloud_formation_template" -> pure PATCloudFormationTemplate
        e -> fromTextError $ "Failure parsing ProvisioningArtifactType from value: '" <> e
           <> "'. Accepted values: cloud_formation_template"

instance ToText ProvisioningArtifactType where
    toText = \case
        PATCloudFormationTemplate -> "CLOUD_FORMATION_TEMPLATE"

instance Hashable     ProvisioningArtifactType
instance NFData       ProvisioningArtifactType
instance ToByteString ProvisioningArtifactType
instance ToQuery      ProvisioningArtifactType
instance ToHeader     ProvisioningArtifactType

instance ToJSON ProvisioningArtifactType where
    toJSON = toJSONText

instance FromJSON ProvisioningArtifactType where
    parseJSON = parseJSONText "ProvisioningArtifactType"

data RecordStatus
    = Error'
    | InProgress
    | Succeeded
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText RecordStatus where
    parser = takeLowerText >>= \case
        "error" -> pure Error'
        "in_progress" -> pure InProgress
        "succeeded" -> pure Succeeded
        e -> fromTextError $ "Failure parsing RecordStatus from value: '" <> e
           <> "'. Accepted values: error, in_progress, succeeded"

instance ToText RecordStatus where
    toText = \case
        Error' -> "ERROR"
        InProgress -> "IN_PROGRESS"
        Succeeded -> "SUCCEEDED"

instance Hashable     RecordStatus
instance NFData       RecordStatus
instance ToByteString RecordStatus
instance ToQuery      RecordStatus
instance ToHeader     RecordStatus

instance FromJSON RecordStatus where
    parseJSON = parseJSONText "RecordStatus"

data RequestStatus
    = Available
    | Creating
    | Failed
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText RequestStatus where
    parser = takeLowerText >>= \case
        "available" -> pure Available
        "creating" -> pure Creating
        "failed" -> pure Failed
        e -> fromTextError $ "Failure parsing RequestStatus from value: '" <> e
           <> "'. Accepted values: available, creating, failed"

instance ToText RequestStatus where
    toText = \case
        Available -> "AVAILABLE"
        Creating -> "CREATING"
        Failed -> "FAILED"

instance Hashable     RequestStatus
instance NFData       RequestStatus
instance ToByteString RequestStatus
instance ToQuery      RequestStatus
instance ToHeader     RequestStatus

instance FromJSON RequestStatus where
    parseJSON = parseJSONText "RequestStatus"

data SortOrder
    = Ascending
    | Descending
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText SortOrder where
    parser = takeLowerText >>= \case
        "ascending" -> pure Ascending
        "descending" -> pure Descending
        e -> fromTextError $ "Failure parsing SortOrder from value: '" <> e
           <> "'. Accepted values: ascending, descending"

instance ToText SortOrder where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance Hashable     SortOrder
instance NFData       SortOrder
instance ToByteString SortOrder
instance ToQuery      SortOrder
instance ToHeader     SortOrder

instance ToJSON SortOrder where
    toJSON = toJSONText
