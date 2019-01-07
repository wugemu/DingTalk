.class final Ldbq$1;
.super Ljava/lang/Object;
.source "AtMeConversationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbq;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldbq;


# direct methods
.method constructor <init>(Ldbq;)V
    .locals 0
    .param p1, "this$0"    # Ldbq;

    .prologue
    .line 45
    iput-object p1, p0, Ldbq$1;->a:Ldbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ldbq$1;->a:Ldbq;

    invoke-static {v0}, Ldbq;->a(Ldbq;)V

    .line 49
    return-void
.end method
