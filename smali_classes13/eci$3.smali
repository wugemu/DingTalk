.class final Leci$3;
.super Ljava/lang/Object;
.source "QuickMessageReplyView.java"

# interfaces
.implements Lcwt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leci;


# direct methods
.method constructor <init>(Leci;)V
    .locals 0
    .param p1, "this$0"    # Leci;

    .prologue
    .line 166
    iput-object p1, p0, Leci$3;->a:Leci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Ldry;)V
    .locals 1
    .param p1, "messageObject"    # Ldry;

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Leci$3;->a:Leci;

    invoke-static {v0}, Leci;->b(Leci;)Leci$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Leci$3;->a:Leci;

    invoke-static {v0}, Leci;->b(Leci;)Leci$b;

    move-result-object v0

    invoke-interface {v0, p1}, Leci$b;->a(Ldry;)V

    .line 176
    :cond_1
    iget-object v0, p0, Leci$3;->a:Leci;

    invoke-virtual {v0}, Leci;->dismiss()V

    goto :goto_0
.end method
