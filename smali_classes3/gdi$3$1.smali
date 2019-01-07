.class final Lgdi$3$1;
.super Ljava/lang/Object;
.source "AclMemberViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdi$3;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdi$3;


# direct methods
.method constructor <init>(Lgdi$3;)V
    .locals 0
    .param p1, "this$1"    # Lgdi$3;

    .prologue
    .line 240
    iput-object p1, p0, Lgdi$3$1;->a:Lgdi$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 243
    iget-object v0, p0, Lgdi$3$1;->a:Lgdi$3;

    iget-object v0, v0, Lgdi$3;->a:Lgdi;

    iget-object v0, v0, Lgdi;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lgdi$3$1;->a:Lgdi$3;

    iget-object v1, v1, Lgdi$3;->c:Lgdi;

    sget v1, Lfzs$h;->alimei_data_error:I

    .line 1050
    invoke-static {v1}, Lgdi;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method
