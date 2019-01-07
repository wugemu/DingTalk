.class final Lfxa$10;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Lfxa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa;->c(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lfxa;


# direct methods
.method constructor <init>(Lfxa;Lcom/alibaba/wukong/Callback;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "this$0"    # Lfxa;

    .prologue
    .line 448
    iput-object p1, p0, Lfxa$10;->e:Lfxa;

    iput-object p2, p0, Lfxa$10;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lfxa$10;->b:Ljava/lang/String;

    iput-wide p4, p0, Lfxa$10;->c:J

    iput-wide p6, p0, Lfxa$10;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 7
    .param p1, "orgName"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 451
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lfxa$10;->e:Lfxa;

    iget-object v1, p0, Lfxa$10;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1}, Lfxa;->a(Lfxa;Lcom/alibaba/wukong/Callback;Lckl;)V

    .line 470
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lfxa$10;->e:Lfxa;

    iget-object v1, p0, Lfxa$10;->b:Ljava/lang/String;

    iget-wide v2, p0, Lfxa$10;->c:J

    iget-wide v4, p0, Lfxa$10;->d:J

    new-instance v6, Lfxa$10$1;

    invoke-direct {v6, p0}, Lfxa$10$1;-><init>(Lfxa$10;)V

    invoke-static/range {v0 .. v6}, Lfxa;->b(Lfxa;Ljava/lang/String;JJLfxa$a;)V

    goto :goto_0
.end method
