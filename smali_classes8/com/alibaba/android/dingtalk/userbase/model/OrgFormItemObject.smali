.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
.super Ljava/lang/Object;
.source "OrgFormItemObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_IMAGE_GROUP:I = 0x1

.field public static final TYPE_PLAIN_TEXT:I = 0x0

.field private static final serialVersionUID:J = -0x50b2f89e8f949b9bL


# instance fields
.field public fieldKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fieldName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public i18n:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public required:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->i18n:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldKey:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    .line 45
    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v1, v2

    .line 42
    goto :goto_1
.end method

.method public static fromIDLModel(Lchk;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    .locals 3
    .param p0, "model"    # Lchk;

    .prologue
    const/4 v2, 0x0

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;-><init>()V

    .line 64
    .local v0, "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    iget-object v1, p0, Lchk;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 64
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    .line 65
    iget-object v1, p0, Lchk;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 65
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    .line 66
    iget-object v1, p0, Lchk;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 66
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->i18n:Z

    .line 67
    iget-object v1, p0, Lchk;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldKey:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lchk;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchk;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lchk;>;"
    if-nez p0, :cond_1

    .line 88
    const/4 v0, 0x0

    .line 94
    :cond_0
    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "authOrgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchk;

    .line 92
    .local v1, "model":Lchk;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fromIDLModel(Lchk;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;)Lchk;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lchk;

    invoke-direct {v0}, Lchk;-><init>()V

    .line 78
    .local v0, "orgFormItemModel":Lchk;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lchk;->a:Ljava/lang/Integer;

    .line 79
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lchk;->b:Ljava/lang/Boolean;

    .line 80
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->i18n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lchk;->c:Ljava/lang/Boolean;

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldKey:Ljava/lang/String;

    iput-object v1, v0, Lchk;->d:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    iput-object v1, v0, Lchk;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lchk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;>;"
    if-nez p0, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 105
    :cond_0
    return-object v0

    .line 101
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "authOrgList":Ljava/util/List;, "Ljava/util/List<Lchk;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    .line 103
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;)Lchk;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->i18n:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    :cond_1
    move v1, v2

    .line 117
    goto :goto_1
.end method
