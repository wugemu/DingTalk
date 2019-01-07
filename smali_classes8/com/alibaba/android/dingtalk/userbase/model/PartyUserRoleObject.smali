.class public Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;
.super Ljava/lang/Object;
.source "PartyUserRoleObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7c60c05a077afd98L


# instance fields
.field public orgId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public role:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->roles:Ljava/util/List;

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->roles:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->orgId:Ljava/lang/Long;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->role:Ljava/lang/Integer;

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->roles:Ljava/util/List;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 62
    return-void
.end method

.method public static fromIdl(Lcfm;)Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;
    .locals 4
    .param p0, "partyUserRoleModel"    # Lcfm;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;-><init>()V

    .line 37
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;
    iget-object v1, p0, Lcfm;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->orgId:Ljava/lang/Long;

    .line 38
    iget-object v1, p0, Lcfm;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->role:Ljava/lang/Integer;

    .line 39
    iget-object v1, p0, Lcfm;->c:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->roles:Ljava/util/List;

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;)Lcfm;
    .locals 4
    .param p0, "partyUserRoleObject"    # Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcfm;

    invoke-direct {v0}, Lcfm;-><init>()V

    .line 48
    .local v0, "model":Lcfm;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->orgId:Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfm;->a:Ljava/lang/Long;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->role:Ljava/lang/Integer;

    .line 3033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfm;->b:Ljava/lang/Integer;

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->roles:Ljava/util/List;

    iput-object v1, v0, Lcfm;->c:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->orgId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->role:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/PartyUserRoleObject;->roles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 86
    return-void
.end method
