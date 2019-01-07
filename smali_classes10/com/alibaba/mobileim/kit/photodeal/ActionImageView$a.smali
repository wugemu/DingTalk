.class public final Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;
.super Ljava/lang/Object;
.source "ActionImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field b:Lhsj;

.field final synthetic c:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;


# direct methods
.method public constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->c:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lhsj;)V
    .locals 1
    .param p1, "cropAction"    # Lhsj;

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->a:Z

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    goto :goto_0
.end method
