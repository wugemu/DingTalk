.class final Libj$4;
.super Ljava/lang/Object;
.source "GroupNickServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libj;->removeGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Libj;


# direct methods
.method constructor <init>(Libj;Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Libj;

    .prologue
    .line 136
    iput-object p1, p0, Libj$4;->d:Libj;

    iput-object p2, p0, Libj$4;->a:Ljava/lang/String;

    iput-wide p3, p0, Libj$4;->b:J

    iput-object p5, p0, Libj$4;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Libj$4;->d:Libj;

    invoke-static {v0}, Libj;->a(Libj;)Libf;

    move-result-object v0

    iget-object v1, p0, Libj$4;->a:Ljava/lang/String;

    iget-wide v2, p0, Libj$4;->b:J

    iget-object v4, p0, Libj$4;->c:Lcom/alibaba/wukong/Callback;

    invoke-virtual {v0, v1, v2, v3, v4}, Libf;->b(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    .line 140
    return-void
.end method
