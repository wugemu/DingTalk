.class public final Ljpo$1;
.super Ljava/lang/Object;
.source "WML.java"

# interfaces
.implements Ljsd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljpo;


# direct methods
.method public constructor <init>(Ljpo;)V
    .locals 0
    .param p1, "this$0"    # Ljpo;

    .prologue
    .line 62
    iput-object p1, p0, Ljpo$1;->a:Ljpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Ljpo$1;->a:Ljpo;

    invoke-static {v0}, Ljpo;->a(Ljpo;)Ljpo$a;

    move-result-object v0

    iget-object v0, v0, Ljpo$a;->c:Ljpt;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ljpo$1;->a:Ljpo;

    invoke-static {v0}, Ljpo;->a(Ljpo;)Ljpo$a;

    move-result-object v0

    iget-object v0, v0, Ljpo$a;->c:Ljpt;

    invoke-interface {v0, p1, p2}, Ljpt;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method
