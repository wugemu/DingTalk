.class final Leyw$7;
.super Ljava/lang/Object;
.source "ShowWindowUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyw;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method constructor <init>(ZLcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Leyw$7;->a:Z

    iput-object p2, p0, Leyw$7;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    iget-boolean v0, p0, Leyw$7;->a:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Leyw$7;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 129
    :cond_0
    return-void
.end method
