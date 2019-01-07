.class final Lfhc$3;
.super Ljava/lang/Object;
.source "ContactSubDepartmentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhc;


# direct methods
.method constructor <init>(Lfhc;)V
    .locals 0
    .param p1, "this$0"    # Lfhc;

    .prologue
    .line 367
    iput-object p1, p0, Lfhc$3;->a:Lfhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 370
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lfhc$3;->a:Lfhc;

    invoke-static {v1}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "https://ulifem.taobao.com/memberProfile?dd_func_wk=true"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method
