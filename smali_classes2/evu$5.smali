.class final Levu$5;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levu;


# direct methods
.method constructor <init>(Levu;)V
    .locals 0
    .param p1, "this$0"    # Levu;

    .prologue
    .line 469
    iput-object p1, p0, Levu$5;->a:Levu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 1
    .param p1, "messageEvent"    # Lcjo$b;

    .prologue
    .line 472
    iget-object v0, p0, Levu$5;->a:Levu;

    invoke-static {v0, p1}, Levu;->a(Levu;Lcjo$b;)V

    .line 473
    return-void
.end method
