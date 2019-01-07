.class public final Ljru;
.super Ljava/lang/Object;
.source "JSMethodInvoker.java"


# instance fields
.field public a:Ljava/lang/reflect/Method;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Z)V
    .locals 0
    .param p1, "target"    # Ljava/lang/reflect/Method;
    .param p2, "uiThread"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ljru;->a:Ljava/lang/reflect/Method;

    .line 21
    iput-boolean p2, p0, Ljru;->b:Z

    .line 22
    return-void
.end method
