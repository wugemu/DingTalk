.class final Lbkl$1;
.super Ljava/lang/Object;
.source "MeetingOperateUtil.java"

# interfaces
.implements Lbko$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lbkl$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbkl$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lbkl$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/4 v2, 0x2

    .line 1036
    invoke-static {v0, v1, v2}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    .line 55
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lbkl$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/4 v2, 0x1

    .line 2036
    invoke-static {v0, v1, v2}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    .line 60
    return-void
.end method
