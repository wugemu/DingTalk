.class final Lcom/alibaba/android/rimet/biz/BokuiActivity$8;
.super Ljava/lang/Object;
.source "BokuiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/BokuiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/BokuiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/BokuiActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$8;->a:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$8;->a:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    .line 197
    return-void
.end method
