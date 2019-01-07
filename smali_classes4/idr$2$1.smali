.class final Lidr$2$1;
.super Ljava/lang/Object;
.source "UserConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidr$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lidr$2;


# direct methods
.method constructor <init>(Lidr$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lidr$2;

    .prologue
    .line 231
    iput-object p1, p0, Lidr$2$1;->b:Lidr$2;

    iput-object p2, p0, Lidr$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 234
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v0

    iget-object v1, p0, Lidr$2$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lidq;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 235
    return-void
.end method
