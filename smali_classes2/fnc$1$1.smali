.class final Lfnc$1$1;
.super Ljava/lang/Object;
.source "FriendConnectionDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfnc$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/User;

.field final synthetic b:Lfnc$1;


# direct methods
.method constructor <init>(Lfnc$1;Lcom/alibaba/wukong/im/User;)V
    .locals 0
    .param p1, "this$1"    # Lfnc$1;

    .prologue
    .line 106
    iput-object p1, p0, Lfnc$1$1;->b:Lfnc$1;

    iput-object p2, p0, Lfnc$1$1;->a:Lcom/alibaba/wukong/im/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lfnc$1$1;->b:Lfnc$1;

    iget-object v1, p0, Lfnc$1$1;->a:Lcom/alibaba/wukong/im/User;

    invoke-static {v0, v1}, Lfnc$1;->a(Lfnc$1;Lcom/alibaba/wukong/im/User;)V

    .line 110
    return-void
.end method
