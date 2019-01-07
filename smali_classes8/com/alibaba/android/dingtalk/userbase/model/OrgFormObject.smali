.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
.super Ljava/lang/Object;
.source "OrgFormObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5f60bbbd7a76fa82L


# instance fields
.field public formId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public formName:Ljava/lang/String;
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
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->orgId:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->formId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->formName:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    .line 37
    return-void
.end method

.method public static fromIDLModel(Lchl;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    .locals 4
    .param p0, "model"    # Lchl;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;-><init>()V

    .line 56
    .local v0, "orgFormObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    iget-object v1, p0, Lchl;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 56
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->orgId:J

    .line 57
    iget-object v1, p0, Lchl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->formId:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lchl;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->formName:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lchl;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)Lchl;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lchl;

    invoke-direct {v0}, Lchl;-><init>()V

    .line 69
    .local v0, "orgFormModel":Lchl;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lchl;->a:Ljava/lang/Long;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->formId:Ljava/lang/String;

    iput-object v1, v0, Lchl;->b:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->formName:Ljava/lang/String;

    iput-object v1, v0, Lchl;->c:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->toIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lchl;->d:Ljava/util/List;

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
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->formId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->formName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    return-void
.end method
