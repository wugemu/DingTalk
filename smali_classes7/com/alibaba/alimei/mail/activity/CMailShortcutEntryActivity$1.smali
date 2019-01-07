.class final Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity$1;
.super Ljava/lang/Object;
.source "CMailShortcutEntryActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 21
    .line 1024
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;)V

    .line 21
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string/jumbo v0, "launch from cmail short cut"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;->finish()V

    .line 36
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 30
    return-void
.end method
