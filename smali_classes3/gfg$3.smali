.class final Lgfg$3;
.super Ljava/lang/Object;
.source "OnlineEditHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfg;->a(Landroid/app/Activity;JZLcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lgfg$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 334
    iget-object v0, p0, Lgfg$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->dismiss()V

    .line 335
    return-void
.end method
