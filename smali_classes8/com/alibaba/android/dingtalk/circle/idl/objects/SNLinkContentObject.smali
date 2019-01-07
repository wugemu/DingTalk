.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;
.super Ljava/lang/Object;
.source "SNLinkContentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3cee45782f745189L


# instance fields
.field public extension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;
    .locals 2
    .param p0, "model"    # Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    .prologue
    .line 24
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;-><init>()V

    .line 26
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->mediaId:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->shareUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->shareUrl:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->title:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->text:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->extension:Ljava/util/Map;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    .prologue
    .line 35
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;-><init>()V

    .line 37
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->mediaId:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->shareUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->shareUrl:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->title:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->text:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;->extension:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method toIdl()Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    move-result-object v0

    return-object v0
.end method
