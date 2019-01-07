.class final Lhfc$1;
.super Ljava/lang/Object;
.source "AppInfoServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfc;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhfc;


# direct methods
.method constructor <init>(Lhfc;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhfc;

    .prologue
    .line 146
    iput-object p1, p0, Lhfc$1;->b:Lhfc;

    iput-object p2, p0, Lhfc$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lhfc$1;->b:Lhfc;

    .line 1022
    iget-object v0, v0, Lhfc;->b:Lhfi;

    .line 149
    iget-object v1, p0, Lhfc$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhfi;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lhfc$1;->b:Lhfc;

    .line 2022
    iget-object v0, v0, Lhfc;->a:Lhfd;

    .line 150
    iget-object v1, p0, Lhfc$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhfd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
