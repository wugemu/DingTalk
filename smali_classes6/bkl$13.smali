.class final Lbkl$13;
.super Ljava/lang/Object;
.source "MeetingOperateUtil.java"

# interfaces
.implements Lbko$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic c:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lbkl$13;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbkl$13;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbkl$13;->c:Lcom/alibaba/wukong/Callback;

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
    .line 229
    iget-object v0, p0, Lbkl$13;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$13;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/4 v2, 0x2

    iget-object v3, p0, Lbkl$13;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILcom/alibaba/wukong/Callback;)V

    .line 230
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 234
    iget-object v0, p0, Lbkl$13;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$13;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/4 v2, 0x1

    iget-object v3, p0, Lbkl$13;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILcom/alibaba/wukong/Callback;)V

    .line 235
    return-void
.end method
