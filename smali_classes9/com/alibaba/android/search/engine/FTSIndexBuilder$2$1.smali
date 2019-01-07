.class final Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;
.super Ljava/lang/Object;
.source "FTSIndexBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;->onOpen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;->b:Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;

    iput-object p2, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 219
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->y()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    :cond_0
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->w()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "0.db"

    iget-object v1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;->a:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;)J

    .line 224
    :cond_3
    return-void
.end method
