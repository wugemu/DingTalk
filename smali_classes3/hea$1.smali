.class public final Lhea$1;
.super Ljava/lang/Object;
.source "LiveDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Lhea;


# direct methods
.method public constructor <init>(Lhea;Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Ljava/lang/String;IIIIILjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lhea;

    .prologue
    .line 69
    iput-object p1, p0, Lhea$1;->j:Lhea;

    iput-object p2, p0, Lhea$1;->a:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iput-object p3, p0, Lhea$1;->b:Ljava/lang/String;

    iput p4, p0, Lhea$1;->c:I

    iput p5, p0, Lhea$1;->d:I

    iput p6, p0, Lhea$1;->e:I

    iput p7, p0, Lhea$1;->f:I

    iput p8, p0, Lhea$1;->g:I

    iput-object p9, p0, Lhea$1;->h:Ljava/lang/String;

    iput p10, p0, Lhea$1;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lhea$1;->j:Lhea;

    iget-object v1, p0, Lhea$1;->a:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iget-object v2, p0, Lhea$1;->b:Ljava/lang/String;

    iget v3, p0, Lhea$1;->c:I

    iget v4, p0, Lhea$1;->d:I

    iget v5, p0, Lhea$1;->e:I

    iget v6, p0, Lhea$1;->f:I

    iget v7, p0, Lhea$1;->g:I

    iget-object v8, p0, Lhea$1;->h:Ljava/lang/String;

    iget v9, p0, Lhea$1;->i:I

    invoke-static/range {v0 .. v9}, Lhea;->a(Lhea;Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Ljava/lang/String;IIIIILjava/lang/String;I)V

    .line 74
    return-void
.end method
