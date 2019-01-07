.class public final Lcij$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcij;


# direct methods
.method public constructor <init>(Lcij;)V
    .locals 0
    .param p1, "this$0"    # Lcij;

    .prologue
    .line 46
    iput-object p1, p0, Lcij$1;->a:Lcij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcij$1;->a:Lcij;

    invoke-static {v0}, Lcij;->a(Lcij;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcij$1;->a:Lcij;

    invoke-static {v0}, Lcij;->b(Lcij;)V

    .line 53
    iget-object v0, p0, Lcij$1;->a:Lcij;

    iget-object v1, p0, Lcij$1;->a:Lcij;

    .line 1081
    iget-object v2, v0, Lcij;->a:Lcik;

    if-eqz v2, :cond_0

    .line 1082
    iget-object v0, v0, Lcij;->a:Lcik;

    .line 1095
    if-eqz v1, :cond_0

    iget-object v2, v0, Lcik;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1096
    iget-object v0, v0, Lcik;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
