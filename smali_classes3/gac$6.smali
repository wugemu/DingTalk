.class final Lgac$6;
.super Ljava/lang/Object;
.source "CSpaceShareAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgac;->a(Lgac$b;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lgiy;

.field final synthetic d:Lgac;


# direct methods
.method constructor <init>(Lgac;Ljava/lang/String;JLgiy;)V
    .locals 1
    .param p1, "this$0"    # Lgac;

    .prologue
    .line 552
    iput-object p1, p0, Lgac$6;->d:Lgac;

    iput-object p2, p0, Lgac$6;->a:Ljava/lang/String;

    iput-wide p3, p0, Lgac$6;->b:J

    iput-object p5, p0, Lgac$6;->c:Lgiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 555
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_group_folder_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lgac$6;->a:Ljava/lang/String;

    iget-wide v2, p0, Lgac$6;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lfzv;->a(Ljava/lang/String;J)V

    .line 557
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v0

    iget-object v1, p0, Lgac$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lgac$6;->c:Lgiy;

    iget-object v2, v2, Lgiy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgle;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v6, Lcem;

    invoke-direct {v6}, Lcem;-><init>()V

    .line 559
    .local v6, "orgConversationModel":Lcem;
    iget-object v0, p0, Lgac$6;->c:Lgiy;

    iget-object v0, v0, Lgiy;->a:Ljava/lang/String;

    iput-object v0, v6, Lcem;->a:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lgac$6;->c:Lgiy;

    iget-object v0, v0, Lgiy;->d:Ljava/lang/String;

    iput-object v0, v6, Lcem;->b:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lgac$6;->c:Lgiy;

    iget-object v0, v0, Lgiy;->f:Ljava/util/Map;

    iput-object v0, v6, Lcem;->c:Ljava/util/Map;

    .line 562
    iget-object v0, p0, Lgac$6;->d:Lgac;

    invoke-static {v0}, Lgac;->b(Lgac;)Lgac$a;

    move-result-object v1

    iget-wide v2, p0, Lgac$6;->b:J

    iget-object v4, p0, Lgac$6;->a:Ljava/lang/String;

    iget-object v0, p0, Lgac$6;->c:Lgiy;

    iget-object v5, v0, Lgiy;->l:Ljava/lang/Long;

    invoke-interface/range {v1 .. v6}, Lgac$a;->a(JLjava/lang/String;Ljava/lang/Long;Lcem;)V

    .line 563
    return-void
.end method
