.class Lmtopsdk/mtop/common/NetworkListenerAdapter$1;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/common/NetworkListenerAdapter;->onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

.field final synthetic val$code:I

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$header:Ljava/util/Map;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/common/NetworkListenerAdapter;ILjava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    iput p2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;->val$code:I

    iput-object p3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;->val$header:Ljava/util/Map;

    iput-object p4, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    iget v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;->val$code:I

    iget-object v2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;->val$header:Ljava/util/Map;

    iget-object v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$1;->val$context:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$000(Lmtopsdk/mtop/common/NetworkListenerAdapter;ILjava/util/Map;Ljava/lang/Object;)V

    .line 99
    return-void
.end method
