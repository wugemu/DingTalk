.class final Lfxa$8;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Lfxa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa;->b(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Lfxa;


# direct methods
.method constructor <init>(Lfxa;Ljava/lang/String;JJLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lfxa;

    .prologue
    .line 368
    iput-object p1, p0, Lfxa$8;->e:Lfxa;

    iput-object p2, p0, Lfxa$8;->a:Ljava/lang/String;

    iput-wide p3, p0, Lfxa$8;->b:J

    iput-wide p5, p0, Lfxa$8;->c:J

    iput-object p7, p0, Lfxa$8;->d:Lcom/alibaba/wukong/Callback;

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
    .line 371
    iget-object v0, p0, Lfxa$8;->e:Lfxa;

    iget-object v1, p0, Lfxa$8;->a:Ljava/lang/String;

    iget-wide v2, p0, Lfxa$8;->b:J

    iget-wide v4, p0, Lfxa$8;->c:J

    new-instance v6, Lfxa$8$1;

    invoke-direct {v6, p0, p1}, Lfxa$8$1;-><init>(Lfxa$8;Lckl;)V

    invoke-static/range {v0 .. v6}, Lfxa;->b(Lfxa;Ljava/lang/String;JJLfxa$a;)V

    .line 404
    return-void
.end method
