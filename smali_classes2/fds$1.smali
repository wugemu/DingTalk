.class final Lfds$1;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfds;->a(Lcou;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcou;

.field final synthetic b:Lfds;


# direct methods
.method constructor <init>(Lfds;Lcou;)V
    .locals 0
    .param p1, "this$0"    # Lfds;

    .prologue
    .line 257
    .local p0, "this":Lfds$1;, "Lfds$1;"
    iput-object p1, p0, Lfds$1;->b:Lfds;

    iput-object p2, p0, Lfds$1;->a:Lcou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lfds$1;, "Lfds$1;"
    iget-object v0, p0, Lfds$1;->b:Lfds;

    invoke-virtual {v0}, Lfds;->e()V

    .line 261
    iget-object v0, p0, Lfds$1;->a:Lcou;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lfds$1;->a:Lcou;

    invoke-interface {v0}, Lcou;->a()V

    .line 264
    :cond_0
    return-void
.end method
