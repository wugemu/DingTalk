.class public Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;
.super Ljava/lang/Object;
.source "CommonTaskListObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CommonTaskListObject"

.field private static final serialVersionUID:J = 0x9b3e79d6a6d9c3L


# instance fields
.field public actionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public expiredTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public newTaskNum:I

.field public taskCount:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tasks:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;",
            ">;"
        }
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
    .line 103
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->newTaskNum:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-class v0, Ldqv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->title:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->titleColor:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->bgColor:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->expiredTime:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->taskCount:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->iconUrl:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->actionUrl:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static fromIdlModel(Ldqu;)Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;
    .locals 6
    .param p0, "model"    # Ldqu;

    .prologue
    const-wide/16 v4, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;-><init>()V

    .line 62
    .local v0, "obj":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;
    iget-object v1, p0, Ldqu;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->fromIdlModels(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    .line 63
    iget-object v1, p0, Ldqu;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->title:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Ldqu;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->titleColor:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Ldqu;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->bgColor:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Ldqu;->e:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 66
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->expiredTime:J

    .line 67
    iget-object v1, p0, Ldqu;->f:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 67
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->taskCount:J

    .line 68
    iget-object v1, p0, Ldqu;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->iconUrl:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Ldqu;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->actionUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 118
    :try_start_0
    invoke-static {p0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    const-string/jumbo v0, ""

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
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->titleColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->bgColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->expiredTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->taskCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
