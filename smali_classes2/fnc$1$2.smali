.class final Lfnc$1$2;
.super Ljava/lang/Object;
.source "FriendConnectionDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnc$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfnc$1;


# direct methods
.method constructor <init>(Lfnc$1;)V
    .locals 0
    .param p1, "this$1"    # Lfnc$1;

    .prologue
    .line 142
    iput-object p1, p0, Lfnc$1$2;->a:Lfnc$1;

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
    .line 145
    iget-object v0, p0, Lfnc$1$2;->a:Lfnc$1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfnc$1;->a(Lfnc$1;Lcom/alibaba/wukong/im/User;)V

    .line 146
    return-void
.end method
