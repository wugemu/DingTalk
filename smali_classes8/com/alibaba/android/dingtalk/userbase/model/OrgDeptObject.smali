.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
.super Ljava/lang/Object;
.source "OrgDeptObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOMER_DEPT:I = 0x1

.field public static final NORMAL_DEPT:I = 0x0

.field private static final serialVersionUID:J = -0x19b52f24d57fa1e9L


# instance fields
.field public deptId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptPathName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ext:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mDeptType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public masterDeptNodeList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field public memberCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public unionNode:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 115
    new-array v2, v8, [J

    .line 116
    .local v2, "l":[J
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readLongArray([J)V

    .line 117
    aget-wide v4, v2, v6

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 118
    aget-wide v4, v2, v7

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 122
    const/4 v3, 0x3

    new-array v0, v3, [I

    .line 123
    .local v0, "i":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 124
    aget v3, v0, v6

    iput v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    .line 125
    aget v3, v0, v7

    iput v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->mDeptType:I

    .line 126
    aget v1, v0, v8

    .line 128
    .local v1, "indexOfSelfInArray":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 129
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 131
    if-ltz v1, :cond_0

    .line 132
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .locals 6
    .param p1, "model"    # Lcen;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 p0, 0x0

    .line 79
    .end local p0    # "this":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :goto_0
    return-object p0

    .line 69
    .restart local p0    # "this":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_0
    iget-object v0, p1, Lcen;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 69
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 70
    iget-object v0, p1, Lcen;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 70
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 71
    iget-object v0, p1, Lcen;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcen;->d:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 72
    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    .line 73
    iget-object v0, p1, Lcen;->e:Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 73
    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->mDeptType:I

    .line 74
    iget-object v0, p1, Lcen;->f:Lcep;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;->fromIDLModel(Lcep;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;

    .line 75
    iget-object v0, p1, Lcen;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->ext:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcen;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptPathName:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcen;->i:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 77
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->unionNode:Z

    goto :goto_0
.end method

.method public toIDLModel()Lcen;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 151
    new-instance v0, Lcen;

    invoke-direct {v0}, Lcen;-><init>()V

    .line 152
    .local v0, "model":Lcen;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcen;->b:Ljava/lang/Long;

    .line 153
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcen;->a:Ljava/lang/Long;

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v1, v0, Lcen;->c:Ljava/lang/String;

    .line 155
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcen;->d:Ljava/lang/Integer;

    .line 156
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->mDeptType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcen;->e:Ljava/lang/Integer;

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;)Lcep;

    move-result-object v1

    iput-object v1, v0, Lcen;->f:Lcep;

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->ext:Ljava/lang/String;

    iput-object v1, v0, Lcen;->g:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptPathName:Ljava/lang/String;

    iput-object v1, v0, Lcen;->h:Ljava/lang/String;

    .line 160
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->unionNode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcen;->i:Ljava/lang/Boolean;

    .line 161
    return-object v0
.end method

.method public toSimpleIDLModel()Lcen;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    new-instance v0, Lcen;

    invoke-direct {v0}, Lcen;-><init>()V

    .line 166
    .local v0, "model":Lcen;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcen;->b:Ljava/lang/Long;

    .line 167
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcen;->a:Ljava/lang/Long;

    .line 168
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcen;->d:Ljava/lang/Integer;

    .line 169
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 89
    new-array v2, v8, [J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    aput-wide v4, v2, v6

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    aput-wide v4, v2, v7

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 90
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    const/4 v0, -0x1

    .line 93
    .local v0, "indexOfSelfInArray":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 97
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [I

    iget v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    aput v3, v2, v6

    iget v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->mDeptType:I

    aput v3, v2, v7

    aput v0, v2, v8

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 99
    if-ltz v0, :cond_1

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .local v1, "masterDeptNodeListTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 110
    .end local v1    # "masterDeptNodeListTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0
.end method
