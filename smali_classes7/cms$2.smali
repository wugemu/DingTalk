.class final Lcms$2;
.super Ljava/lang/Object;
.source "AndTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcms;->a(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcms$2;->a:Ljava/lang/String;

    iput p2, p0, Lcms$2;->b:I

    iput p3, p0, Lcms$2;->c:I

    iput p4, p0, Lcms$2;->d:I

    iput p5, p0, Lcms$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 879
    iget-object v0, p0, Lcms$2;->a:Ljava/lang/String;

    iget v1, p0, Lcms$2;->b:I

    iget v2, p0, Lcms$2;->c:I

    iget v3, p0, Lcms$2;->d:I

    iget v4, p0, Lcms$2;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcms;->b(Ljava/lang/String;IIII)V

    .line 880
    return-void
.end method
