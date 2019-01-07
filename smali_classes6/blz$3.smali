.class final Lblz$3;
.super Ljava/lang/Object;
.source "ApDeviceServiceHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lblz;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lblz$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lblz$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->dismiss()V

    .line 163
    return-void
.end method
