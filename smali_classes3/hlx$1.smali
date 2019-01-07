.class final Lhlx$1;
.super Ljava/lang/Object;
.source "MiniEmbedWebView.java"

# interfaces
.implements Liop$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlx;->getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlx;


# direct methods
.method constructor <init>(Lhlx;)V
    .locals 0
    .param p1, "this$0"    # Lhlx;

    .prologue
    .line 123
    iput-object p1, p0, Lhlx$1;->a:Lhlx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldExit()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
