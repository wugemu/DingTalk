.class public Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
.super Ljava/lang/Object;
.source "CircleLinkContentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3cee45782f745189L


# instance fields
.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extension:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

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
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shareFromIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shareFromText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shareUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfeh;)Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    .locals 2
    .param p0, "model"    # Lfeh;

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;-><init>()V

    .line 50
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    iget-object v1, p0, Lfeh;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->mediaId:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lfeh;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareUrl:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lfeh;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->title:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lfeh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->text:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lfeh;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->content:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lfeh;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareFromIcon:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lfeh;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareFromText:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lfeh;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->extension:Ljava/util/Map;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;)Lfeh;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lfeh;

    invoke-direct {v0}, Lfeh;-><init>()V

    .line 66
    .local v0, "result":Lfeh;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lfeh;->a:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareUrl:Ljava/lang/String;

    iput-object v1, v0, Lfeh;->b:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lfeh;->c:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->text:Ljava/lang/String;

    iput-object v1, v0, Lfeh;->d:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->content:Ljava/lang/String;

    iput-object v1, v0, Lfeh;->e:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareFromIcon:Ljava/lang/String;

    iput-object v1, v0, Lfeh;->f:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareFromText:Ljava/lang/String;

    iput-object v1, v0, Lfeh;->g:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lfeh;->h:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method toIdl()Lfeh;
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;)Lfeh;

    move-result-object v0

    return-object v0
.end method
