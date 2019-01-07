.class final Lhlr$1;
.super Ljava/lang/Object;
.source "MiniPageInstance.java"

# interfaces
.implements Liop$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlr;


# direct methods
.method constructor <init>(Lhlr;)V
    .locals 0
    .param p1, "this$0"    # Lhlr;

    .prologue
    .line 192
    iput-object p1, p0, Lhlr$1;->a:Lhlr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldExit()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method
