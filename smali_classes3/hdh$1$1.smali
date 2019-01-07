.class final Lhdh$1$1;
.super Ljava/lang/Object;
.source "NativeToJsBridge.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdh$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhdh$1;


# direct methods
.method constructor <init>(Lhdh$1;)V
    .locals 0
    .param p1, "this$1"    # Lhdh$1;

    .prologue
    .line 72
    iput-object p1, p0, Lhdh$1$1;->a:Lhdh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
