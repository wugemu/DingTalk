.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$33;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/RetryPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->doPlayNetworkFile(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$33;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTimeout()I
    .locals 1

    .prologue
    .line 1234
    const/16 v0, 0x1388

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x1

    return v0
.end method
