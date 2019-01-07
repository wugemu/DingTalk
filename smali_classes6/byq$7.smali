.class final Lbyq$7;
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

.field final synthetic c:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lbyq$7;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbyq$7;->b:Ljava/lang/String;

    iput-object p3, p0, Lbyq$7;->c:Lcom/alibaba/wukong/Callback;

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
    .line 273
    iget-object v0, p0, Lbyq$7;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->a(Landroid/app/Activity;)V

    .line 274
    iget-object v0, p0, Lbyq$7;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbyq$7;->b:Ljava/lang/String;

    iget-object v2, p0, Lbyq$7;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2}, Lbyq;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 275
    return-void
.end method
