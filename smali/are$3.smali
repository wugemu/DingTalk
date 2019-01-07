.class public final Lare$3;
.super Ljava/lang/Object;
.source "AliMailFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lare;


# direct methods
.method public constructor <init>(Lare;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lare;

    .prologue
    .line 111
    iput-object p1, p0, Lare$3;->c:Lare;

    iput-object p2, p0, Lare$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lare$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 114
    iget-object v1, p0, Lare$3;->c:Lare;

    invoke-static {v1}, Lare;->a(Lare;)V

    .line 116
    iget-object v1, p0, Lare$3;->c:Lare;

    invoke-static {v1}, Lare;->b(Lare;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lare$3;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 117
    .local v0, "aliMailFolder":Laro;
    if-eqz v0, :cond_0

    .line 118
    iget-boolean v1, p0, Lare$3;->b:Z

    .line 1079
    iput-boolean v1, v0, Laro;->g:Z

    .line 121
    :cond_0
    iget-object v1, p0, Lare$3;->c:Lare;

    invoke-static {v1}, Lare;->d(Lare;)Lats;

    move-result-object v1

    new-instance v2, Larp;

    iget-object v3, p0, Lare$3;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lare$3;->b:Z

    invoke-direct {v2, v3, v4}, Larp;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Lats;->a(Larp;)I

    .line 122
    return-void
.end method
