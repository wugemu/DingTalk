.class final Lhqk$1;
.super Ljava/lang/Object;
.source "WebViewPreloadImpl.java"

# interfaces
.implements Lhqg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhqk;


# direct methods
.method constructor <init>(Lhqk;)V
    .locals 0
    .param p1, "this$0"    # Lhqk;

    .prologue
    .line 272
    iput-object p1, p0, Lhqk$1;->a:Lhqk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lhqk$1;->a:Lhqk;

    invoke-virtual {v0}, Lhqk;->a()V

    .line 276
    return-void
.end method
