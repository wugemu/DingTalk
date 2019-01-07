.class final Lbbo$64$1;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo$64;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbbo$64;


# direct methods
.method constructor <init>(Lbbo$64;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lbbo$64;

    .prologue
    .line 1190
    iput-object p1, p0, Lbbo$64$1;->b:Lbbo$64;

    iput-object p2, p0, Lbbo$64$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lbbo$64$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "confirm ding failed"

    :goto_0
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1194
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lbbo$64$1;->a:Ljava/lang/String;

    goto :goto_0
.end method
