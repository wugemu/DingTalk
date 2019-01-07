.class public final Leju$6;
.super Ljava/lang/Object;
.source "OAPopUpWindowHelper.java"

# interfaces
.implements Lelp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/BaseAdapter;

.field final synthetic b:Leju;


# direct methods
.method public constructor <init>(Leju;Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "this$0"    # Leju;

    .prologue
    .line 198
    iput-object p1, p0, Leju$6;->b:Leju;

    iput-object p2, p0, Leju$6;->a:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lejy;)V
    .locals 1
    .param p1, "newTask"    # Lejy;

    .prologue
    .line 201
    iget-object v0, p0, Leju$6;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 202
    return-void
.end method
