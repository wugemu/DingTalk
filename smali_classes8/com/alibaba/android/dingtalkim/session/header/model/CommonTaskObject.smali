.class public Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;
.super Ljava/lang/Object;
.source "CommonTaskObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CommonTaskObject"

.field private static final serialVersionUID:J = 0x61070c2627eb621L


# instance fields
.field public actionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public groupId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isClicked:Z

.field public status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public taskId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public titleColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->isClicked:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->iconUrl:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->title:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->titleColor:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->status:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->actionUrl:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->taskId:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->groupId:J

    .line 94
    return-void
.end method

.method public static fromIdlModel(Ldqv;)Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;
    .locals 6
    .param p0, "model"    # Ldqv;

    .prologue
    const-wide/16 v4, 0x0

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;-><init>()V

    .line 57
    .local v0, "obj":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;
    iget-object v1, p0, Ldqv;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->iconUrl:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Ldqv;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->title:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Ldqv;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->titleColor:Ljava/lang/String;

    .line 61
    :try_start_0
    iget-object v1, p0, Ldqv;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 61
    iput v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    iget-object v1, p0, Ldqv;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->actionUrl:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Ldqv;->f:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 67
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->taskId:J

    .line 68
    iget-object v1, p0, Ldqv;->g:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 68
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->groupId:J

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->status:I

    goto :goto_1
.end method

.method public static fromIdlModels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqv;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Ldqv;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 83
    :cond_1
    return-object v1

    .line 78
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqv;

    .line 80
    .local v0, "model":Ldqv;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->fromIdlModel(Ldqv;)Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public isNewTask()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 126
    iget v1, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->titleColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->taskId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    return-void
.end method
