.class final Lgnm$1$2;
.super Ljava/lang/Object;
.source "SpaceMenuSaveToPhoneHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgnm$1;


# direct methods
.method constructor <init>(Lgnm$1;)V
    .locals 0
    .param p1, "this$1"    # Lgnm$1;

    .prologue
    .line 113
    iput-object p1, p0, Lgnm$1$2;->a:Lgnm$1;

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
    .line 116
    iget-object v0, p0, Lgnm$1$2;->a:Lgnm$1;

    iget-object v0, v0, Lgnm$1;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_save_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method
