.class final Lgmm$3;
.super Ljava/lang/Object;
.source "SpaceMenuDeleteHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgmm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lgmm;


# direct methods
.method constructor <init>(Lgmm;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lgmm;

    .prologue
    .line 126
    iput-object p1, p0, Lgmm$3;->c:Lgmm;

    iput-object p2, p0, Lgmm$3;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lgmm$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 126
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1129
    if-eqz v0, :cond_1

    .line 1130
    iget-object v0, p0, Lgmm$3;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgmm$3;->b:Z

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lgmm$3;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    sget v0, Lfzs$h;->delete_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 145
    sget v0, Lfzs$h;->delete_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 146
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 141
    return-void
.end method
