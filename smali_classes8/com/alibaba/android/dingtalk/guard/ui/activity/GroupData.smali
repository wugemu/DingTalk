.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
.super Ljava/lang/Object;
.source "GroupData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ORG_LOGO_URL:Ljava/lang/String; = "https://static.dingtalk.com/media/lALPBbCc1QwQKlrMyMzI_200_200.png"


# instance fields
.field public corpId:Ljava/lang/String;

.field public isAdmin:Z

.field public isMainOrg:Z

.field public mediaId:Ljava/lang/String;

.field public orgId:J

.field public orgName:Ljava/lang/String;

.field public wifiName:Ljava/lang/String;

.field public wifiPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->mediaId:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isMainOrg:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiPwd:Ljava/lang/String;

    .line 44
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v1, v2

    .line 41
    goto :goto_1
.end method

.method public static parseGroupData(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .locals 6
    .param p0, "employeeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    .line 106
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;-><init>()V

    .line 107
    .local v1, "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    .line 108
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    iput-boolean v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isMainOrg:Z

    .line 109
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    iput-boolean v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, "mediaId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_1

    .line 113
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 114
    .local v3, "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    if-eqz v3, :cond_1

    .line 115
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    .line 116
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    .line 118
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 124
    .end local v3    # "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    :cond_1
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    :try_start_0
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    const-string/jumbo v2, "https://static.dingtalk.com/media/lALPBbCc1QwQKlrMyMzI_200_200.png"

    .line 137
    :cond_3
    iput-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->mediaId:Ljava/lang/String;

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 129
    const-string/jumbo v2, ""

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    instance-of v3, p1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 82
    .local v0, "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 92
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v4, v1

    .line 93
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->mediaId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->mediaId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v4, v1

    .line 94
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v4, v1

    .line 95
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isMainOrg:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_3
    add-int v0, v4, v1

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    if-eqz v4, :cond_5

    :goto_4
    add-int v0, v1, v3

    .line 97
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiName:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int v0, v3, v1

    .line 98
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiPwd:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiPwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 99
    return v0

    :cond_1
    move v1, v2

    .line 92
    goto :goto_0

    :cond_2
    move v1, v2

    .line 93
    goto :goto_1

    :cond_3
    move v1, v2

    .line 94
    goto :goto_2

    :cond_4
    move v1, v2

    .line 95
    goto :goto_3

    :cond_5
    move v3, v2

    .line 96
    goto :goto_4

    :cond_6
    move v1, v2

    .line 97
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->mediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isMainOrg:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiPwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 58
    goto :goto_1
.end method
