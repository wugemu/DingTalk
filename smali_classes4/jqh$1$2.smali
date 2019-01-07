.class final Ljqh$1$2;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Ljse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljqh$1;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljqh$1;


# direct methods
.method constructor <init>(Ljqh$1;)V
    .locals 0
    .param p1, "this$1"    # Ljqh$1;

    .prologue
    .line 553
    iput-object p1, p0, Ljqh$1$2;->a:Ljqh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLPageObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "androidContext"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pageObject"    # Lcom/taobao/windmill/rt/runtime/WMLPageObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "status"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "errorMsg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 558
    invoke-static {p1, p2, p3, p4}, Ljre$b;->a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLPageObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method
