.class public final Landroid/support/v7/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Leh;)Landroid/view/Menu;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportMenu"    # Leh;

    .prologue
    .line 40
    new-instance v0, Landroid/support/v7/view/menu/MenuWrapperICS;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Leh;)V

    return-object v0
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Lei;)Landroid/view/MenuItem;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportMenuItem"    # Lei;

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 45
    new-instance v0, Landroid/support/v7/view/menu/MenuItemWrapperJB;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperJB;-><init>(Landroid/content/Context;Lei;)V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Lei;)V

    goto :goto_0
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Lej;)Landroid/view/SubMenu;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportSubMenu"    # Lej;

    .prologue
    .line 52
    new-instance v0, Landroid/support/v7/view/menu/SubMenuWrapperICS;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Lej;)V

    return-object v0
.end method
