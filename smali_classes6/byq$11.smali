.class final Lbyq$11;
.super Ljava/lang/Object;
.source "StartLiveUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lbyq$11;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbyq$11;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 390
    iget-object v0, p0, Lbyq$11;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->a(Landroid/app/Activity;)V

    .line 391
    iget-object v0, p0, Lbyq$11;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbyq$11;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbyq;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 392
    return-void
.end method
