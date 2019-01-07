.class final Lbkl$8;
.super Ljava/lang/Object;
.source "MeetingOperateUtil.java"

# interfaces
.implements Lbko$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILbkl$a;)V
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
    .line 120
    iput-object p1, p0, Lbkl$8;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbkl$8;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lbkl$8;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$8;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const-string/jumbo v2, ""

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lbkl$8;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$8;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const-string/jumbo v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;I)V

    .line 129
    return-void
.end method
