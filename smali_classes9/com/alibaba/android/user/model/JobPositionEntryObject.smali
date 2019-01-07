.class public Lcom/alibaba/android/user/model/JobPositionEntryObject;
.super Ljava/lang/Object;
.source "JobPositionEntryObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x299d705c01cb33c1L


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mediaIdUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfov;)Lcom/alibaba/android/user/model/JobPositionEntryObject;
    .locals 2
    .param p0, "model"    # Lfov;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/JobPositionEntryObject;-><init>()V

    .line 42
    .local v0, "object":Lcom/alibaba/android/user/model/JobPositionEntryObject;
    iget-object v1, p0, Lfov;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->code:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lfov;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->name:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lfov;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->mediaId:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lfov;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->mediaIdUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lfov;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 50
    new-instance v0, Lfov;

    invoke-direct {v0}, Lfov;-><init>()V

    .line 51
    .local v0, "model":Lfov;
    iget-object v1, p0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->code:Ljava/lang/String;

    iput-object v1, v0, Lfov;->a:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfov;->b:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lfov;->c:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/user/model/JobPositionEntryObject;->mediaIdUrl:Ljava/lang/String;

    iput-object v1, v0, Lfov;->d:Ljava/lang/String;

    .line 55
    return-object v0
.end method
