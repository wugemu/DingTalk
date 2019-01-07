.class final Ldhy$4;
.super Ljava/lang/Object;
.source "ForwardUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ldhy$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldhy$b;


# direct methods
.method constructor <init>(Ldhy$b;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Ldhy$4;->a:Ldhy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 230
    iget-object v0, p0, Ldhy$4;->a:Ldhy$b;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Ldhy$4;->a:Ldhy$b;

    invoke-interface {v0}, Ldhy$b;->a()V

    .line 233
    :cond_0
    return-void
.end method
