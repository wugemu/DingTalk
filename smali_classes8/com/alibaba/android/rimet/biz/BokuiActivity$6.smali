.class final Lcom/alibaba/android/rimet/biz/BokuiActivity$6;
.super Ljava/lang/Object;
.source "BokuiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$6;->a:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$6;->a:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    .line 180
    return-void
.end method
