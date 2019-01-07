.class final Lbpa$2;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpa;->a(Lcou;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcou;

.field final synthetic b:Lbpa;


# direct methods
.method constructor <init>(Lbpa;Lcou;)V
    .locals 0
    .param p1, "this$0"    # Lbpa;

    .prologue
    .line 258
    .local p0, "this":Lbpa$2;, "Lbpa$2;"
    iput-object p1, p0, Lbpa$2;->b:Lbpa;

    iput-object p2, p0, Lbpa$2;->a:Lcou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Lbpa$2;, "Lbpa$2;"
    iget-object v0, p0, Lbpa$2;->b:Lbpa;

    invoke-virtual {v0}, Lbpa;->d()V

    .line 262
    iget-object v0, p0, Lbpa$2;->a:Lcou;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lbpa$2;->a:Lcou;

    invoke-interface {v0}, Lcou;->a()V

    .line 265
    :cond_0
    return-void
.end method
