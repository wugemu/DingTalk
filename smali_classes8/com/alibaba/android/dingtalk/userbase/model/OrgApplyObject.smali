.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
.super Ljava/lang/Object;
.source "OrgApplyObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x19b52f1ceaf0cde9L


# instance fields
.field public acceptType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public gmtCreate:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inviterEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isRead:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public optEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    .locals 4
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;-><init>()V

    .line 73
    .local v1, "info":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->id:J

    .line 74
    const/4 v2, 0x1

    new-array v0, v2, [Z

    .line 75
    .local v0, "bools":[Z
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 76
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->isRead:Z

    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgName:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 80
    const-class v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgId:J

    .line 82
    const-class v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->remark:Ljava/lang/String;

    .line 84
    const-class v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->inviterEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    .line 85
    const-class v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->optEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->acceptType:Ljava/lang/Integer;

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->gmtCreate:Ljava/lang/Long;

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->items:Ljava/util/List;

    .line 89
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->items:Ljava/util/List;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 90
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public fromIDLModel(Lcej;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    .locals 8
    .param p1, "model"    # Lcej;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 p0, 0x0

    .line 160
    .end local p0    # "this":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    :goto_0
    return-object p0

    .line 136
    .restart local p0    # "this":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    :cond_0
    iget-object v2, p1, Lcej;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 136
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->id:J

    .line 137
    iget-object v2, p1, Lcej;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgName:Ljava/lang/String;

    .line 138
    iget-object v2, p1, Lcej;->d:Lcgk;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 139
    iget-object v2, p1, Lcej;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    .line 140
    iget-object v2, p1, Lcej;->f:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 140
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 141
    iget-object v2, p1, Lcej;->g:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 141
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->isRead:Z

    .line 142
    iget-object v2, p1, Lcej;->b:Ljava/lang/Long;

    .line 3044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 142
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgId:J

    .line 143
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 144
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v3, p1, Lcej;->h:Lcen;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 145
    iget-object v2, p1, Lcej;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->remark:Ljava/lang/String;

    .line 146
    iget-object v2, p1, Lcej;->j:Lcet;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->fromIDLModel(Lcet;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->inviterEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    .line 147
    iget-object v2, p1, Lcej;->k:Lcet;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->fromIDLModel(Lcet;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->optEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    .line 148
    iget-object v2, p1, Lcej;->l:Ljava/lang/Integer;

    .line 4033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->acceptType:Ljava/lang/Integer;

    .line 149
    iget-object v2, p1, Lcej;->m:Ljava/lang/Long;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->gmtCreate:Ljava/lang/Long;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "applyItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;>;"
    iget-object v2, p1, Lcej;->n:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 152
    iget-object v2, p1, Lcej;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcei;

    .line 153
    .local v1, "itemModel":Lcei;
    if-eqz v1, :cond_1

    .line 156
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->fromIDLModel(Lcei;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    .end local v1    # "itemModel":Lcei;
    :cond_2
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->items:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->isRead:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->inviterEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->optEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->acceptType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->gmtCreate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->items:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 108
    return-void
.end method
