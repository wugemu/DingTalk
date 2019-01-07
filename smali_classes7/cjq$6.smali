.class final Lcjq$6;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcjq;


# direct methods
.method constructor <init>(Lcjq;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcjq;

    .prologue
    .line 258
    iput-object p1, p0, Lcjq$6;->b:Lcjq;

    iput-object p2, p0, Lcjq$6;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 261
    iget-object v0, p0, Lcjq$6;->a:Landroid/app/Activity;

    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1195
    invoke-static {v0, v1}, Lbzp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 262
    return-void
.end method
