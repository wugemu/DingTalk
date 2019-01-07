.class final Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewHolder"
.end annotation


# instance fields
.field public menuName:Landroid/widget/TextView;

.field public spliter:Landroid/view/View;

.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->this$1:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$1;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;)V

    return-void
.end method
